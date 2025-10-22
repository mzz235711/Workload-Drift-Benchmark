/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<41 AND p.CommentCount>8 AND p.CommentCount<26 AND u.DownVotes>185 AND u.DownVotes<683 AND v.CreationDate>'2010-11-01 13:27:44'::timestamp AND v.CreationDate<'2011-08-05 20:32:52'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<12 AND b.Date>'2013-08-29 11:44:54'::timestamp AND b.Date<'2013-12-18 19:10:37'::timestamp;

