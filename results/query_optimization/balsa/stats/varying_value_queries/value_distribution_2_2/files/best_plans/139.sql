/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>13 AND p.Score<177 AND p.CommentCount>0 AND p.CommentCount<21 AND u.DownVotes>400 AND u.DownVotes<1403 AND v.CreationDate>'2009-03-17 21:33:32'::timestamp AND v.CreationDate<'2011-11-04 02:54:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2011-03-12 01:01:45'::timestamp AND b.Date<'2013-05-28 19:56:42'::timestamp;

