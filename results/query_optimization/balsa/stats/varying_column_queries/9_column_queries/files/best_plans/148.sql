/*+ HashJoin(c u p ph v)
 HashJoin(c u p ph)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(ph)
 SeqScan(v)
 Leading(((((c u) p) ph) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.CreationDate>='2010-07-19 20:06:56'::timestamp AND p.Score>=-1 AND p.AnswerCount>=0 AND p.FavoriteCount<=2 AND p.CreationDate>='2010-07-20 13:11:50'::timestamp AND ph.PostHistoryTypeId=4 AND u.Reputation<=1148 AND u.UpVotes>=0 AND u.UpVotes<=7;

