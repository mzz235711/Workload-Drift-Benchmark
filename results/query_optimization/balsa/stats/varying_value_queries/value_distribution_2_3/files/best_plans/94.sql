/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<45 AND p.CommentCount>3 AND p.CommentCount<10 AND u.DownVotes>52 AND u.DownVotes<519 AND v.CreationDate>'2011-10-27 14:11:11'::timestamp AND v.CreationDate<'2013-02-23 22:58:08'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<13 AND b.Date>'2010-09-10 04:06:02'::timestamp AND b.Date<'2011-02-21 14:51:52'::timestamp;

