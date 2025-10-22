/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<151 AND p.CommentCount>5 AND p.CommentCount<40 AND u.DownVotes>54 AND u.DownVotes<197 AND v.CreationDate>'2011-08-26 19:58:04'::timestamp AND v.CreationDate<'2012-09-30 20:19:20'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2011-05-10 20:21:49'::timestamp AND b.Date<'2013-09-11 19:36:30'::timestamp;

