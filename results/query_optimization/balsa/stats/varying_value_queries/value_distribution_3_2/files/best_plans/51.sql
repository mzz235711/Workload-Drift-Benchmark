/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<48 AND p.CommentCount>10 AND p.CommentCount<28 AND u.DownVotes>515 AND u.DownVotes<910 AND v.CreationDate>'2011-08-17 11:06:29'::timestamp AND v.CreationDate<'2014-06-16 21:06:03'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2011-07-19 21:58:34'::timestamp AND b.Date<'2013-03-06 20:03:00'::timestamp;

