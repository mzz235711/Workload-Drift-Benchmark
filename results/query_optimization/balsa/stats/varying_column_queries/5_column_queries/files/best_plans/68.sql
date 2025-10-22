/*+ HashJoin(v b u p)
 HashJoin(b u p)
 MergeJoin(u p)
 SeqScan(v)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.BountyAmount>=0 AND p.CommentCount=6 AND p.FavoriteCount>=0 AND u.UpVotes<=106 AND u.CreationDate>='2011-02-03 09:16:10'::timestamp;

