/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<39 AND p.CommentCount>0 AND p.CommentCount<31 AND u.DownVotes>175 AND u.DownVotes<357 AND v.CreationDate>'2011-12-03 23:40:25'::timestamp AND v.CreationDate<'2012-09-05 16:35:17'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<15 AND b.Date>'2011-06-16 02:07:35'::timestamp AND b.Date<'2011-12-25 15:06:26'::timestamp;

