/*+ MergeJoin(v p u b)
 MergeJoin(p u b)
 MergeJoin(u b)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<106 AND p.CommentCount>31 AND p.CommentCount<44 AND u.DownVotes>10 AND u.DownVotes<1111 AND v.CreationDate>'2010-08-02 22:40:58'::timestamp AND v.CreationDate<'2014-05-02 11:25:28'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<8 AND b.Date>'2013-05-16 08:12:20'::timestamp AND b.Date<'2014-07-14 02:55:36'::timestamp;

