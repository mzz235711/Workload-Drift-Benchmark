/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<29 AND p.CommentCount>5 AND p.CommentCount<27 AND u.DownVotes>221 AND u.DownVotes<900 AND v.CreationDate>'2011-04-23 14:45:08'::timestamp AND v.CreationDate<'2013-08-21 07:47:20'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<7 AND b.Date>'2013-12-25 14:19:31'::timestamp AND b.Date<'2014-07-26 00:00:19'::timestamp;

