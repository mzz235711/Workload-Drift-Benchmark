/*+ MergeJoin(b p u v)
 MergeJoin(p u v)
 MergeJoin(p u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<69 AND p.CommentCount>4 AND p.CommentCount<25 AND u.DownVotes>518 AND u.DownVotes<813 AND v.CreationDate>'2010-08-20 14:50:14'::timestamp AND v.CreationDate<'2014-08-02 02:01:30'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<13 AND b.Date>'2012-03-29 09:36:20'::timestamp AND b.Date<'2012-04-10 16:22:04'::timestamp;

