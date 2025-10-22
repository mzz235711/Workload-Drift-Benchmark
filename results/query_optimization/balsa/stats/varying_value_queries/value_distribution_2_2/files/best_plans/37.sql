/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<122 AND p.CommentCount>3 AND p.CommentCount<16 AND u.DownVotes>586 AND u.DownVotes<1503 AND v.CreationDate>'2010-06-17 11:24:40'::timestamp AND v.CreationDate<'2013-05-29 00:00:00'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2011-01-05 13:53:53'::timestamp AND b.Date<'2012-08-23 03:41:02'::timestamp;

