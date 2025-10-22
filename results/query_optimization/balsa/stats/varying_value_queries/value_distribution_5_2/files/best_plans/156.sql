/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-16 AND p.Score<76 AND p.CommentCount>18 AND p.CommentCount<44 AND u.DownVotes>655 AND u.DownVotes<1732 AND v.CreationDate>'2009-06-08 04:50:44'::timestamp AND v.CreationDate<'2013-01-12 23:48:40'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<14 AND b.Date>'2010-09-23 23:38:21'::timestamp AND b.Date<'2013-01-21 10:09:19'::timestamp;

