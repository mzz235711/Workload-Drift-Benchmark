/*+ HashJoin(c u b ph)
 HashJoin(u b ph)
 HashJoin(u b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(b)
 SeqScan(ph)
 Leading((c ((u b) ph))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND u.UpVotes>=0 AND u.UpVotes<=225;

