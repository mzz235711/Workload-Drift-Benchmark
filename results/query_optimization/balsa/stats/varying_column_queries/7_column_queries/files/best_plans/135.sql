/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date>='2010-08-04 03:10:29'::timestamp AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=23 AND p.ViewCount>=0 AND p.CreationDate>='2010-07-19 19:51:34'::timestamp AND p.CreationDate<='2014-08-21 05:56:14'::timestamp;

