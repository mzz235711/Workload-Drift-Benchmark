/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<27 AND p.CommentCount>19 AND p.CommentCount<44 AND u.DownVotes>772 AND u.DownVotes<1044 AND v.CreationDate>'2011-02-22 15:45:04'::timestamp AND v.CreationDate<'2011-09-01 23:48:02'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2010-10-23 00:55:22'::timestamp AND b.Date<'2011-11-21 09:27:55'::timestamp;

