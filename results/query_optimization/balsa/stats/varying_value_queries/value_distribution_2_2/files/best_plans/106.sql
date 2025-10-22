/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<71 AND p.CommentCount>23 AND p.CommentCount<38 AND u.DownVotes>24 AND u.DownVotes<544 AND v.CreationDate>'2011-02-09 21:56:41'::timestamp AND v.CreationDate<'2012-05-29 19:43:55'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-04-13 09:44:30'::timestamp AND b.Date<'2013-12-22 15:23:02'::timestamp;

