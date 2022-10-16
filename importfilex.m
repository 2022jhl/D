function Untitled = importfilex(filename, dataLines)
%IMPORTFILE 从文本文件中导入数据
%  UNTITLED = IMPORTFILE(FILENAME)读取文本文件 FILENAME 中默认选定范围的数据。  以表形式返回数据。
%
%  UNTITLED = IMPORTFILE(FILE, DATALINES)按指定行间隔读取文本文件 FILENAME
%  中的数据。对于不连续的行间隔，请将 DATALINES 指定为正整数标量或 N×2 正整数标量数组。
%
%  示例:
%  Untitled = importfile("C:\Users\JHL\Desktop\52203\57516099999.csv", [1, Inf]);
%
%  另请参阅 READTABLE。
%
% 由 MATLAB 于 2021-12-01 14:26:04 自动生成

%% 输入处理

% 如果不指定 dataLines，请定义默认范围
if nargin < 2
    dataLines = [1, Inf];
end

%% 设置导入选项并导入数据
opts = delimitedTextImportOptions("NumVariables", 38);

% 指定范围和分隔符
opts.DataLines = dataLines;
opts.Delimiter = ",";

% 指定列名称和类型
opts.VariableNames = ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var9", "Var10", "WND", "Var12", "Var13", "TMP", "Var15", "SLP", "Var17", "AA2", "Var19", "Var20", "Var21", "GA1", "Var23", "Var24", "Var25", "Var26", "Var27", "Var28", "Var29", "MA1", "Var31", "Var32", "Var33", "Var34", "Var35", "Var36", "Var37", "Var38"];
opts.SelectedVariableNames = ["WND", "TMP", "SLP", "AA2", "GA1", "MA1"];
opts.VariableTypes = ["string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "categorical", "string", "string", "double", "string", "double", "string", "double", "string", "string", "string", "categorical", "string", "string", "string", "string", "string", "string", "string", "double", "string", "string", "string", "string", "string", "string", "string", "string"];

% 指定文件级属性
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% 指定变量属性
opts = setvaropts(opts, ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var9", "Var10", "Var12", "Var13", "Var15", "Var17", "Var19", "Var20", "Var21", "Var23", "Var24", "Var25", "Var26", "Var27", "Var28", "Var29", "Var31", "Var32", "Var33", "Var34", "Var35", "Var36", "Var37", "Var38"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["Var1", "Var2", "Var3", "Var4", "Var5", "Var6", "Var7", "Var8", "Var9", "Var10", "WND", "Var12", "Var13", "Var15", "Var17", "Var19", "Var20", "Var21", "GA1", "Var23", "Var24", "Var25", "Var26", "Var27", "Var28", "Var29", "Var31", "Var32", "Var33", "Var34", "Var35", "Var36", "Var37", "Var38"], "EmptyFieldRule", "auto");
opts = setvaropts(opts, ["TMP", "SLP", "AA2", "MA1"], "TrimNonNumeric", true);
opts = setvaropts(opts, ["TMP", "SLP", "AA2", "MA1"], "ThousandsSeparator", ",");

% 导入数据
Untitled = readtable(filename, opts);

end