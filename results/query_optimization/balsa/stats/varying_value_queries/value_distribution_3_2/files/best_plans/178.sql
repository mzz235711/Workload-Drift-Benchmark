/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>30 AND p.Score<131 AND p.CommentCount>25 AND p.CommentCount<31 AND u.DownVotes>35 AND u.DownVotes<1268 AND v.CreationDate>'2014-04-06 04:05:35'::timestamp AND v.CreationDate<'2014-08-17 03:07:30'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2010-07-27 14:51:49'::timestamp AND b.Date<'2013-07-12 23:23:02'::timestamp;

