/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<120 AND p.CommentCount>5 AND p.CommentCount<26 AND u.DownVotes>386 AND u.DownVotes<1118 AND v.CreationDate>'2009-11-21 05:16:21'::timestamp AND v.CreationDate<'2011-07-28 07:41:51'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2011-06-15 09:23:06'::timestamp AND b.Date<'2012-04-27 00:46:07'::timestamp;

