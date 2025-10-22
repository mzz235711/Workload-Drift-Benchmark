/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>3 AND p.Score<70 AND p.CommentCount>1 AND p.CommentCount<18 AND u.DownVotes>16 AND u.DownVotes<1485 AND v.CreationDate>'2010-12-17 07:35:41'::timestamp AND v.CreationDate<'2011-07-02 00:09:32'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-11-27 05:33:01'::timestamp AND b.Date<'2013-09-30 02:57:55'::timestamp;

