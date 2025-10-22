/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<157 AND p.CommentCount>15 AND p.CommentCount<24 AND u.DownVotes>29 AND u.DownVotes<1770 AND v.CreationDate>'2010-07-26 10:52:38'::timestamp AND v.CreationDate<'2012-02-08 18:16:01'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2012-03-05 17:02:57'::timestamp AND b.Date<'2013-08-25 15:56:29'::timestamp;

