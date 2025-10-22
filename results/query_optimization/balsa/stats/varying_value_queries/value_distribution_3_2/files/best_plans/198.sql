/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<91 AND p.CommentCount>7 AND p.CommentCount<33 AND u.DownVotes>44 AND u.DownVotes<962 AND v.CreationDate>'2009-10-05 11:13:50'::timestamp AND v.CreationDate<'2013-07-22 11:11:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-11-26 23:38:43'::timestamp AND b.Date<'2014-08-10 01:40:36'::timestamp;

