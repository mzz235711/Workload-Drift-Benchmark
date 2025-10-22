/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<102 AND p.CommentCount>1 AND p.CommentCount<4 AND u.DownVotes>22 AND u.DownVotes<1579 AND v.CreationDate>'2011-09-14 06:48:09'::timestamp AND v.CreationDate<'2013-01-21 00:55:05'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<9 AND b.Date>'2012-02-11 14:34:20'::timestamp AND b.Date<'2013-07-06 03:12:41'::timestamp;

