using System;
namespace Langben.IBLL
{
    public interface ISysFieldHander
    {
        string GetMyTextsById(string id);
        global::System.Collections.Generic.List<global::Langben.DAL.SysField> GetSysField(string table, string colum);
        global::System.Collections.Generic.List<global::Langben.DAL.SysField> GetSysField(string table, string colum, string parentMyTexts);
        global::System.Collections.Generic.List<global::Langben.DAL.SysField> GetSysFieldByParent(string id, string parentid, string value);
        global::System.Collections.Generic.List<global::Langben.DAL.SysField> GetSysFieldByParentId(string id);
    }
}
