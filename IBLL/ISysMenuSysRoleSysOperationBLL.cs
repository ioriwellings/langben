﻿using System;
using System.Collections.Generic;
using System.Linq;

using Common;
using Langben.DAL;
using System.ServiceModel;

namespace Langben.IBLL
{
    /// <summary>
    /// 角色菜单操作 接口
    /// </summary>
    [ServiceContract(Namespace = "www.langben.com")]
    public interface ISysMenuSysRoleSysOperationBLL
    {
        /// <summary>
        /// 根据SysMenuIdId，获取所有角色菜单操作数据
        /// </summary>
        /// <param name="id">外键的主键</param>
        /// <returns></returns>
        List<SysOperation> GetByRefSysMenuIdAndSysRoleId(string id, List<string> sysRoleIds);
        /// <summary>
        /// 查询的数据
        /// </summary>
        /// <param name="id">额外的参数</param>
        /// <param name="page">页码</param>
        /// <param name="rows">每页显示的行数</param>
        /// <param name="order">排序字段</param>
        /// <param name="sort">升序asc（默认）还是降序desc</param>
        /// <param name="search">查询条件</param>
        /// <param name="total">结果集的总数</param>
        /// <returns>结果集</returns>
        [OperationContract]
        List<SysMenuSysRoleSysOperation> GetByParam(string id, int page, int rows, string order, string sort, string search, ref int total);
        /// <summary>
        /// 获取所有
        /// </summary>
        /// <returns></returns>
        [OperationContract]
        System.Collections.Generic.List<SysMenuSysRoleSysOperation> GetAll();

        /// <summary>
        /// 根据SysMenuIdId，获取所有角色菜单操作数据
        /// </summary>
        /// <param name="id">外键的主键</param>
        /// <returns></returns>
        List<SysMenuSysRoleSysOperation> GetByRefSysMenuId(string id);

        /// <summary>
        /// 根据SysRoleIdId，获取所有角色菜单操作数据
        /// </summary>
        /// <param name="id">外键的主键</param>
        /// <returns></returns>
        IQueryable<SysMenuSysRoleSysOperation> GetByRefSysRoleId(string id);

        /// <summary>
        /// 根据SysOperationIdId，获取所有角色菜单操作数据
        /// </summary>
        /// <param name="id">外键的主键</param>
        /// <returns></returns>
        List<SysMenuSysRoleSysOperation> GetByRefSysOperationId(string id);


        /// <summary>
        /// 根据主键，查看详细信息
        /// </summary>
        /// <param name="id">根据主键</param>
        /// <returns></returns>
        [OperationContract]
        SysMenuSysRoleSysOperation GetById(string id);
        /// <summary>
        /// 创建一个对象
        /// </summary>
        /// <param name="validationErrors">返回的错误信息</param>
        /// <param name="entity">一个对象</param>
        /// <returns></returns>
        [OperationContract]
        bool Create(ref Common.ValidationErrors validationErrors, DAL.SysMenuSysRoleSysOperation entity);
        /// <summary>
        ///  创建对象集合
        /// </summary>
        /// <param name="validationErrors">返回的错误信息</param>
        /// <param name="entitys">对象集合</param>
        /// <returns></returns>
        [OperationContract]
        bool CreateCollection(ref Common.ValidationErrors validationErrors, System.Linq.IQueryable<DAL.SysMenuSysRoleSysOperation> entitys);
        /// <summary>
        /// 删除一个对象
        /// </summary>
        /// <param name="validationErrors">返回的错误信息</param>
        /// <param name="id">一条数据的主键</param>
        /// <returns></returns>  
        [OperationContract]
        bool Delete(ref Common.ValidationErrors validationErrors, string id);
        /// <summary>
        /// 删除对象集合
        /// </summary>
        /// <param name="validationErrors">返回的错误信息</param>
        /// <param name="deleteCollection">主键的集合</param>
        /// <returns></returns>       
        [OperationContract]
        bool DeleteCollection(ref Common.ValidationErrors validationErrors, string[] deleteCollection);
        /// <summary>
        /// 编辑一个对象
        /// </summary>
        /// <param name="validationErrors">返回的错误信息</param>
        /// <param name="entity">一个对象</param>
        /// <returns></returns>
        [OperationContract]
        bool Edit(ref Common.ValidationErrors validationErrors, DAL.SysMenuSysRoleSysOperation entity);
        /// <summary>
        ///  创建对象集合
        /// </summary>
        /// <param name="validationErrors">返回的错误信息</param>
        /// <param name="entitys">对象集合</param>
        /// <returns></returns>
        [OperationContract]
        bool EditCollection(ref Common.ValidationErrors validationErrors, System.Linq.IQueryable<DAL.SysMenuSysRoleSysOperation> entitys);
    }
}

