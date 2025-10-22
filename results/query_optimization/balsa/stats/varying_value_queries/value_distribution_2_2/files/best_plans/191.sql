/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<171 AND p.CommentCount>9 AND p.CommentCount<40 AND u.DownVotes>338 AND u.DownVotes<1544 AND v.CreationDate>'2009-11-05 06:07:55'::timestamp AND v.CreationDate<'2012-05-08 10:47:13'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2012-11-15 00:19:20'::timestamp AND b.Date<'2013-02-20 21:27:31'::timestamp;

