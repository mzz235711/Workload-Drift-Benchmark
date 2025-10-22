/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<60 AND p.CommentCount>6 AND p.CommentCount<33 AND u.DownVotes>387 AND u.DownVotes<1788 AND v.CreationDate>'2009-05-03 06:18:32'::timestamp AND v.CreationDate<'2014-08-03 07:32:54'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2010-08-19 04:27:01'::timestamp AND b.Date<'2013-02-25 12:26:41'::timestamp;

