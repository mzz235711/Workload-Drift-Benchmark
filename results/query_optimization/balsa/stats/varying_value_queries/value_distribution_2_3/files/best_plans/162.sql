/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<157 AND p.CommentCount>1 AND p.CommentCount<17 AND u.DownVotes>499 AND u.DownVotes<1598 AND v.CreationDate>'2010-10-15 02:02:32'::timestamp AND v.CreationDate<'2011-07-02 10:52:48'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2011-12-08 05:07:12'::timestamp AND b.Date<'2014-01-04 01:19:24'::timestamp;

