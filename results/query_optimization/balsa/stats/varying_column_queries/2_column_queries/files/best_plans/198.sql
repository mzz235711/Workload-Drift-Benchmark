/*+ MergeJoin(b ph u p)
 MergeJoin(ph u p)
 MergeJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND u.CreationDate>='2011-05-02 13:50:22'::timestamp AND b.Date>='2010-07-21 17:28:12'::timestamp;

