/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<127 AND p.CommentCount>0 AND p.CommentCount<4 AND u.DownVotes>662 AND u.DownVotes<1031 AND v.CreationDate>'2012-07-19 11:51:11'::timestamp AND v.CreationDate<'2013-10-21 08:02:26'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<14 AND b.Date>'2011-02-20 16:20:37'::timestamp AND b.Date<'2014-09-02 11:39:47'::timestamp;

