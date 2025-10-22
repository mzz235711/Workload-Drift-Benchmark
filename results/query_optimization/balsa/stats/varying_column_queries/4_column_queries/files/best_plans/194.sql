/*+ HashJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount<=11 AND p.FavoriteCount<=5 AND b.Date<='2014-09-13 19:17:53'::timestamp AND u.UpVotes<=75;

