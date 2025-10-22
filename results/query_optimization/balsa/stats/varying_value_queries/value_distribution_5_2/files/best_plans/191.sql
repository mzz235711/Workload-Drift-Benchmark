/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>71 AND p.Score<158 AND p.CommentCount>1 AND p.CommentCount<14 AND u.DownVotes>494 AND u.DownVotes<1055 AND v.CreationDate>'2012-06-14 10:34:12'::timestamp AND v.CreationDate<'2012-07-23 07:29:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-05-13 19:01:15'::timestamp AND b.Date<'2011-08-09 12:50:18'::timestamp;

