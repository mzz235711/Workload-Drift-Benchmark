/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>26 AND p.Score<93 AND p.CommentCount>1 AND p.CommentCount<7 AND u.DownVotes>209 AND u.DownVotes<1084 AND v.CreationDate>'2013-02-19 10:28:53'::timestamp AND v.CreationDate<'2014-04-15 06:21:03'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-09-13 21:52:29'::timestamp AND b.Date<'2014-07-06 01:25:36'::timestamp;

