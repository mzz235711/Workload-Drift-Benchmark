/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND u.Reputation>=1 AND u.UpVotes>=0;

