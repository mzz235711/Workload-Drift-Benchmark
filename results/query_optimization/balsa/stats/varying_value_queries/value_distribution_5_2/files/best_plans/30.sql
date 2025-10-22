/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<173 AND p.CommentCount>0 AND p.CommentCount<12 AND u.DownVotes>132 AND u.DownVotes<190 AND v.CreationDate>'2013-08-07 01:56:24'::timestamp AND v.CreationDate<'2014-01-15 00:07:57'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<6 AND b.Date>'2011-10-28 13:23:16'::timestamp AND b.Date<'2013-12-18 13:36:04'::timestamp;

