/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<60 AND p.CommentCount>11 AND p.CommentCount<27 AND u.DownVotes>515 AND u.DownVotes<1830 AND v.CreationDate>'2010-06-16 07:02:31'::timestamp AND v.CreationDate<'2014-08-03 02:22:54'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2013-02-13 10:05:58'::timestamp AND b.Date<'2014-07-15 02:50:29'::timestamp;

