/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>106 AND p.Score<169 AND p.CommentCount>5 AND p.CommentCount<26 AND u.DownVotes>773 AND u.DownVotes<1170 AND v.CreationDate>'2012-07-03 00:50:01'::timestamp AND v.CreationDate<'2014-05-20 08:59:42'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2012-11-27 07:10:42'::timestamp AND b.Date<'2014-08-15 01:52:26'::timestamp;

