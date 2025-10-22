/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>28 AND p.Score<107 AND p.CommentCount>7 AND p.CommentCount<23 AND u.DownVotes>486 AND u.DownVotes<1563 AND v.CreationDate>'2009-05-26 15:28:45'::timestamp AND v.CreationDate<'2012-10-03 05:54:46'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<10 AND b.Date>'2013-12-15 18:26:17'::timestamp AND b.Date<'2014-09-01 18:58:40'::timestamp;

