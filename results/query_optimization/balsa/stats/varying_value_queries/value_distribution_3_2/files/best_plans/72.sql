/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<123 AND p.CommentCount>16 AND p.CommentCount<38 AND u.DownVotes>92 AND u.DownVotes<1270 AND v.CreationDate>'2010-08-05 22:56:13'::timestamp AND v.CreationDate<'2012-02-14 03:39:22'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<13 AND b.Date>'2013-12-02 02:14:11'::timestamp AND b.Date<'2014-03-04 02:17:26'::timestamp;

