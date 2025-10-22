/*+ MergeJoin(b p u v)
 MergeJoin(p u v)
 MergeJoin(p u)
 IndexScan(b)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading((b ((p u) v))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<20 AND p.CommentCount>8 AND p.CommentCount<20 AND u.DownVotes>350 AND u.DownVotes<1053 AND v.CreationDate>'2012-11-27 16:14:01'::timestamp AND v.CreationDate<'2013-07-06 11:31:58'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2012-05-02 23:24:23'::timestamp AND b.Date<'2014-06-28 00:09:50'::timestamp;

