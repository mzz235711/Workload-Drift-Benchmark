/*+ MergeJoin(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>35 AND p.Score<70 AND p.CommentCount>11 AND p.CommentCount<26 AND u.DownVotes>102 AND u.DownVotes<567 AND v.CreationDate>'2010-01-09 20:46:47'::timestamp AND v.CreationDate<'2014-04-24 18:51:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2011-08-28 12:19:21'::timestamp AND b.Date<'2011-09-16 01:31:18'::timestamp;

