/*+ HashJoin(c u v ph)
 HashJoin(u v ph)
 HashJoin(u v)
 SeqScan(c)
 IndexScan(u)
 SeqScan(v)
 SeqScan(ph)
 Leading((c ((u v) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.CreationDate>='2010-08-03 01:08:43'::timestamp AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-10-12 12:34:08'::timestamp AND ph.CreationDate<='2014-09-02 22:22:30'::timestamp AND u.Reputation<=216 AND u.Views>=0;

