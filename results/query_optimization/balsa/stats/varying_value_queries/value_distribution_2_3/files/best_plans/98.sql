/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<58 AND p.CommentCount>6 AND p.CommentCount<26 AND u.DownVotes>273 AND u.DownVotes<1045 AND v.CreationDate>'2010-07-25 06:56:06'::timestamp AND v.CreationDate<'2014-01-09 08:36:01'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-01-07 02:36:11'::timestamp AND b.Date<'2012-06-10 14:39:31'::timestamp;

