/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<165 AND p.CommentCount>3 AND p.CommentCount<42 AND u.DownVotes>404 AND u.DownVotes<1878 AND v.CreationDate>'2009-06-17 12:35:26'::timestamp AND v.CreationDate<'2014-08-17 02:08:46'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<9 AND b.Date>'2011-05-06 22:29:10'::timestamp AND b.Date<'2014-03-24 09:18:26'::timestamp;

