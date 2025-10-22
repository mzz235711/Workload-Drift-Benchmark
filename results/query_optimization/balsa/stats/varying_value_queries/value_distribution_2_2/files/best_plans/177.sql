/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<138 AND p.CommentCount>8 AND p.CommentCount<26 AND u.DownVotes>727 AND u.DownVotes<1185 AND v.CreationDate>'2009-09-28 12:37:33'::timestamp AND v.CreationDate<'2013-11-09 15:19:28'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2011-03-29 13:07:24'::timestamp AND b.Date<'2011-11-05 01:17:16'::timestamp;

