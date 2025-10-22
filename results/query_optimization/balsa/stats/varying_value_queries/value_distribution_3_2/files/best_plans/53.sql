/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>44 AND p.Score<89 AND p.CommentCount>1 AND p.CommentCount<6 AND u.DownVotes>68 AND u.DownVotes<1441 AND v.CreationDate>'2012-01-29 07:06:50'::timestamp AND v.CreationDate<'2012-12-22 09:50:17'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2012-03-10 14:55:12'::timestamp AND b.Date<'2012-08-18 14:57:19'::timestamp;

