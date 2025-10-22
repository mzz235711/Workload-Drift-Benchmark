/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<155 AND p.CommentCount>5 AND p.CommentCount<32 AND u.DownVotes>732 AND u.DownVotes<831 AND v.CreationDate>'2009-10-07 12:12:24'::timestamp AND v.CreationDate<'2010-12-10 05:59:32'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2014-05-25 23:35:08'::timestamp AND b.Date<'2014-07-23 20:33:09'::timestamp;

