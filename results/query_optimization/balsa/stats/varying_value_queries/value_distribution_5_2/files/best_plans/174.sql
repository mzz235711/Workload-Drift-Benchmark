/*+ HashJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>29 AND p.Score<183 AND p.CommentCount>0 AND p.CommentCount<18 AND u.DownVotes>62 AND u.DownVotes<1731 AND v.CreationDate>'2010-06-26 05:02:16'::timestamp AND v.CreationDate<'2014-02-07 01:46:00'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2010-08-14 14:12:52'::timestamp AND b.Date<'2011-06-30 08:48:44'::timestamp;

