/*+ HashJoin(u b p v)
 NestLoop(p v)
 NestLoop(u b)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading(((u b) (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<135 AND p.CommentCount>24 AND p.CommentCount<37 AND u.DownVotes>106 AND u.DownVotes<1910 AND v.CreationDate>'2009-03-14 12:00:42'::timestamp AND v.CreationDate<'2013-07-16 18:01:47'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2012-02-03 16:24:53'::timestamp AND b.Date<'2012-11-02 09:19:58'::timestamp;

