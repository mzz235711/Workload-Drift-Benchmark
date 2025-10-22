/*+ HashJoin(c ph b u)
 MergeJoin(ph b u)
 HashJoin(b u)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(b)
 SeqScan(u)
 Leading((c (ph (b u)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=3 AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

