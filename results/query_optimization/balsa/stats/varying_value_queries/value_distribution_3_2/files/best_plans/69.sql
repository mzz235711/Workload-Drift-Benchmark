/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>96 AND p.Score<152 AND p.CommentCount>10 AND p.CommentCount<14 AND u.DownVotes>405 AND u.DownVotes<1138 AND v.CreationDate>'2010-06-12 13:13:00'::timestamp AND v.CreationDate<'2012-08-28 02:42:37'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-08-02 06:07:35'::timestamp AND b.Date<'2013-02-28 14:07:59'::timestamp;

