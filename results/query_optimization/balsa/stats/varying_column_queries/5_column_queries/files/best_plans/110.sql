/*+ HashJoin(ph u b v)
 HashJoin(u b v)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(b)
 IndexScan(v)
 Leading((ph ((u b) v))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=1 AND ph.CreationDate<='2014-08-17 11:47:06'::timestamp AND v.CreationDate<='2014-09-09 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=82;

