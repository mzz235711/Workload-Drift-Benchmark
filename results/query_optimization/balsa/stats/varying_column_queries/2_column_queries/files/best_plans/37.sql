/*+ HashJoin(b v u ph)
 HashJoin(v u ph)
 HashJoin(v u)
 SeqScan(b)
 IndexScan(v)
 SeqScan(u)
 IndexScan(ph)
 Leading((b ((v u) ph))) */
SELECT COUNT(*) FROM postHistory as ph, votes as v, users as u, badges as b WHERE u.Id = ph.UserId AND u.Id = v.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=16 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp;

