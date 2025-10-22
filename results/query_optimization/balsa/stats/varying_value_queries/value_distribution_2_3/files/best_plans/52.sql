/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<183 AND p.CommentCount>4 AND p.CommentCount<19 AND u.DownVotes>52 AND u.DownVotes<1486 AND v.CreationDate>'2010-11-25 06:33:47'::timestamp AND v.CreationDate<'2011-07-09 15:15:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<8 AND b.Date>'2011-05-08 03:23:09'::timestamp AND b.Date<'2012-10-18 21:30:38'::timestamp;

