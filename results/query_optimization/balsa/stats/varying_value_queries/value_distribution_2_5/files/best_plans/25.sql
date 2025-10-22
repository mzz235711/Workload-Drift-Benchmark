/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>12 AND p.Score<175 AND p.CommentCount>1 AND p.CommentCount<32 AND u.DownVotes>198 AND u.DownVotes<1041 AND v.CreationDate>'2010-07-18 12:33:42'::timestamp AND v.CreationDate<'2011-06-18 21:25:28'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<15 AND b.Date>'2010-12-14 20:18:08'::timestamp AND b.Date<'2014-06-18 22:20:49'::timestamp;

