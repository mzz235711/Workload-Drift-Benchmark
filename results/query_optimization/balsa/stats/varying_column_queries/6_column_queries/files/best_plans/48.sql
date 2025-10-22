/*+ HashJoin(c u v ph)
 MergeJoin(u v ph)
 HashJoin(u v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(v)
 SeqScan(ph)
 Leading((c ((u v) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND ph.PostHistoryTypeId=16 AND ph.CreationDate<='2014-08-19 22:04:19'::timestamp AND u.Views>=0 AND u.Views<=217 AND u.UpVotes>=0;

