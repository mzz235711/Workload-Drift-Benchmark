/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>67 AND p.Score<178 AND p.CommentCount>7 AND p.CommentCount<27 AND u.DownVotes>769 AND u.DownVotes<1038 AND v.CreationDate>'2009-05-23 09:37:45'::timestamp AND v.CreationDate<'2012-12-06 04:18:20'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<13 AND b.Date>'2011-05-26 09:25:23'::timestamp AND b.Date<'2011-11-13 04:35:22'::timestamp;

