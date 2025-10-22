/*+ HashJoin(c u b ph)
 NestLoop(c u b)
 MergeJoin(c u)
 IndexScan(c)
 SeqScan(u)
 IndexScan(b)
 SeqScan(ph)
 Leading((((c u) b) ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=2 AND b.Date>='2010-09-05 09:24:01'::timestamp AND u.DownVotes>=0 AND u.UpVotes>=0;

