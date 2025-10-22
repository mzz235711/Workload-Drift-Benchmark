/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<140 AND p.CommentCount>16 AND p.CommentCount<30 AND u.DownVotes>96 AND u.DownVotes<1145 AND v.CreationDate>'2009-07-01 11:08:10'::timestamp AND v.CreationDate<'2014-06-22 07:17:14'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2012-02-24 07:04:06'::timestamp AND b.Date<'2013-05-11 19:19:48'::timestamp;

